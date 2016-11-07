<?php
    class ModelCatalogBidding extends Model {
        public function addBidding($product_id, $data) {
            $this->db->query("INSERT INTO " . DB_PREFIX . "bidding SET author = '" . $this->db->escape($data['bidname']) . "', customer_id = '" . (int)$this->customer->getId() . "', product_id = '" . (int)$product_id . "', text = '" . $this->db->escape($data['bidtext']) . "', rating = '" . (int)$data['bidrating'] . "', status = '1', date_added = NOW()");

            $bidding_id = $this->db->getLastId();

            if (in_array('bidding', (array)$this->config->get('config_mail_alert'))) {
                $this->load->language('mail/bidding');
                $this->load->model('catalog/product');
                $this->load->model('account/customer');


                $product_info = $this->model_catalog_product->getProduct($product_id);
                $customer_info = $this->model_account_customer->getCustomer($product_info['customer_id']);

                $subject = sprintf($this->language->get('text_subject'), html_entity_decode($this->config->get('config_name'), ENT_QUOTES, 'UTF-8'));

                $message  = $this->language->get('text_waiting') . "\r\n,";
                $message .= sprintf($this->language->get('text_product'), html_entity_decode($product_info['name'], ENT_QUOTES, 'UTF-8')) . "\r\n,";
                $message .= sprintf($this->language->get('text_bidder'), html_entity_decode($data['bidname'], ENT_QUOTES, 'UTF-8')) . "\r\n,";

                $message .= $this->language->get('text_bidding') . "\r\n";
                $message .= html_entity_decode($data['bidtext'], ENT_QUOTES, 'UTF-8') . "\r\n";

                $mail = new Mail();
                $mail->protocol = $this->config->get('config_mail_protocol');
                $mail->parameter = $this->config->get('config_mail_parameter');
                $mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
                $mail->smtp_username = $this->config->get('config_mail_smtp_username');
                $mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
                $mail->smtp_port = $this->config->get('config_mail_smtp_port');
                $mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');

//                $mail->setTo($this->config->get('config_email'));
                $mail->setTo($customer_info['email']);
                $mail->setFrom($this->config->get('config_email'));
                $mail->setSender(html_entity_decode($this->config->get('config_name'), ENT_QUOTES, 'UTF-8'));
                $mail->setSubject($subject);
                $mail->setText($message);
                $mail->send();

                // Send to additional alert emails
                $emails = explode(',', $this->config->get('config_alert_email'));

                foreach ($emails as $email) {
                    if ($email && filter_var($email, FILTER_VALIDATE_EMAIL)) {
                        $mail->setTo($email);
                        $mail->send();
                    }
                }
            }
        }

        public function getBiddingsByProductId($product_id, $start = 0, $limit = 20) {
            if ($start < 0) {
                $start = 0;
            }

            if ($limit < 1) {
                $limit = 20;
            }

            $query = $this->db->query("SELECT b.bidding_id, b.author, b.customer_id, b.rating, b.text, p.product_id, pd.name, p.price, p.image, b.date_added FROM " . DB_PREFIX . "bidding b LEFT JOIN " . DB_PREFIX . "product p ON (b.product_id = p.product_id) LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id) WHERE p.product_id = '" . (int)$product_id . "' AND p.date_available <= NOW() AND p.status = '1' AND b.status = '1' AND pd.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY b.date_added DESC LIMIT " . (int)$start . "," . (int)$limit);

            return $query->rows;
        }

        public function getTotalBiddingsByProductId($product_id) {
            $query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "bidding b LEFT JOIN " . DB_PREFIX . "product p ON (b.product_id = p.product_id) LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id) WHERE p.product_id = '" . (int)$product_id . "' AND p.date_available <= NOW() AND p.status = '1' AND b.status = '1' AND pd.language_id = '" . (int)$this->config->get('config_language_id') . "'");

            return $query->row['total'];
        }
    }