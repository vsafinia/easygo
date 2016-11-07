<?php
    class ModelCatalogBidding extends Model {
        public function addBidding($data) {
            $this->db->query("INSERT INTO " . DB_PREFIX . "bidding SET author = '" . $this->db->escape($data['author']) . "', product_id = '" . (int)$data['product_id'] . "', text = '" . $this->db->escape(strip_tags($data['text'])) . "', rating = '" . (int)$data['rating'] . "', status = '" . (int)$data['status'] . "', date_added = '" . $this->db->escape($data['date_added']) . "'");

            $bidding_id = $this->db->getLastId();

            $this->cache->delete('product');

            return $bidding_id;
        }

        public function editBidding($bidding_id, $data) {
            $this->db->query("UPDATE " . DB_PREFIX . "bidding SET author = '" . $this->db->escape($data['author']) . "', product_id = '" . (int)$data['product_id'] . "', text = '" . $this->db->escape(strip_tags($data['text'])) . "', rating = '" . (int)$data['rating'] . "', status = '" . (int)$data['status'] . "', date_added = '" . $this->db->escape($data['date_added']) . "', date_modified = NOW() WHERE bidding_id = '" . (int)$bidding_id . "'");

            $this->cache->delete('product');
        }

        public function deleteBidding($bidding_id) {
            $this->db->query("DELETE FROM " . DB_PREFIX . "bidding WHERE bidding_id = '" . (int)$bidding_id . "'");

            $this->cache->delete('product');
        }

        public function getBidding($bidding_id) {
            $query = $this->db->query("SELECT DISTINCT *, (SELECT pd.name FROM " . DB_PREFIX . "product_description pd WHERE pd.product_id = r.product_id AND pd.language_id = '" . (int)$this->config->get('config_language_id') . "') AS product FROM " . DB_PREFIX . "bidding r WHERE r.bidding_id = '" . (int)$bidding_id . "'");

            return $query->row;
        }

        public function getBiddings($data = array()) {
            $sql = "SELECT r.bidding_id, pd.name, r.author, r.rating, r.status, r.date_added FROM " . DB_PREFIX . "bidding r LEFT JOIN " . DB_PREFIX . "product_description pd ON (r.product_id = pd.product_id) WHERE pd.language_id = '" . (int)$this->config->get('config_language_id') . "'";

            if (!empty($data['filter_product'])) {
                $sql .= " AND pd.name LIKE '" . $this->db->escape($data['filter_product']) . "%'";
            }

            if (!empty($data['filter_author'])) {
                $sql .= " AND r.author LIKE '" . $this->db->escape($data['filter_author']) . "%'";
            }

            if (isset($data['filter_status']) && !is_null($data['filter_status'])) {
                $sql .= " AND r.status = '" . (int)$data['filter_status'] . "'";
            }

            if (!empty($data['filter_date_added'])) {
                $sql .= " AND DATE(r.date_added) = DATE('" . $this->db->escape($data['filter_date_added']) . "')";
            }

            $sort_data = array(
                'pd.name',
                'r.author',
                'r.rating',
                'r.status',
                'r.date_added'
            );

            if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
                $sql .= " ORDER BY " . $data['sort'];
            } else {
                $sql .= " ORDER BY r.date_added";
            }

            if (isset($data['order']) && ($data['order'] == 'DESC')) {
                $sql .= " DESC";
            } else {
                $sql .= " ASC";
            }

            if (isset($data['start']) || isset($data['limit'])) {
                if ($data['start'] < 0) {
                    $data['start'] = 0;
                }

                if ($data['limit'] < 1) {
                    $data['limit'] = 20;
                }

                $sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
            }

            $query = $this->db->query($sql);

            return $query->rows;
        }

        public function getTotalBiddings($data = array()) {
            $sql = "SELECT COUNT(*) AS total FROM " . DB_PREFIX . "bidding r LEFT JOIN " . DB_PREFIX . "product_description pd ON (r.product_id = pd.product_id) WHERE pd.language_id = '" . (int)$this->config->get('config_language_id') . "'";

            if (!empty($data['filter_product'])) {
                $sql .= " AND pd.name LIKE '" . $this->db->escape($data['filter_product']) . "%'";
            }

            if (!empty($data['filter_author'])) {
                $sql .= " AND r.author LIKE '" . $this->db->escape($data['filter_author']) . "%'";
            }

            if (isset($data['filter_status']) && !is_null($data['filter_status'])) {
                $sql .= " AND r.status = '" . (int)$data['filter_status'] . "'";
            }

            if (!empty($data['filter_date_added'])) {
                $sql .= " AND DATE(r.date_added) = DATE('" . $this->db->escape($data['filter_date_added']) . "')";
            }

            $query = $this->db->query($sql);

            return $query->row['total'];
        }

        public function getTotalBiddingsAwaitingApproval() {
            $query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "bidding WHERE status = '0'");

            return $query->row['total'];
        }
    }